import numpy as np
import matplotlib.pyplot as plt
from scipy.optimize import leastsq

def curvature_sin(s, L, R):
    return (1 / R) * np.sin(np.pi * s / L)

def integrate_path(s_array, curvature_func, theta0=0.0, x0=0.0, y0=0.0):
    x = [x0]
    y = [y0]
    theta = [theta0]
    for i in range(1, len(s_array)):
        ds = s_array[i] - s_array[i-1]
        k = curvature_func(s_array[i])
        theta_i = theta[-1] + k * ds
        x_i = x[-1] + np.cos(theta_i) * ds
        y_i = y[-1] + np.sin(theta_i) * ds
        theta.append(theta_i)
        x.append(x_i)
        y.append(y_i)
    return np.array(x), np.array(y), np.array(theta)

def generate_composite_curve(R, L1, L0, L2, D_deg, step=0.01):
    D = np.deg2rad(D_deg)
    s1 = np.arange(0, L1, step)
    s2 = np.arange(0, L0, step)
    s3 = np.arange(0, L2, step)

    k1 = lambda s: curvature_sin(s, L1, R)
    x1, y1, theta1 = integrate_path(s1, k1, theta0=D)

    k2 = lambda s: 1 / R
    x2, y2, theta2 = integrate_path(s2, k2, theta0=theta1[-1], x0=x1[-1], y0=y1[-1])

    k3 = lambda s: curvature_sin(L2 - s, L2, R)
    x3, y3, theta3 = integrate_path(s3, k3, theta0=theta2[-1], x0=x2[-1], y0=y2[-1])

    x_total = np.concatenate([x1, x2, x3])
    y_total = np.concatenate([y1, y2, y3])
    return x_total, y_total

def fit_circle(xs, ys):
    def calc_R(xc, yc):
        return np.sqrt((xs - xc)**2 + (ys - yc)**2)

    def f(c):
        Ri = calc_R(*c)
        return Ri - Ri.mean()

    center_estimate = np.mean(xs), np.mean(ys)
    center, _ = leastsq(f, center_estimate)
    Ri = calc_R(*center)
    R_mean = Ri.mean()
    return center[0], center[1], R_mean

def fit_fixed_radius_circle(xs, ys, R):
    x_mean = np.mean(xs)
    y_mean = np.mean(ys)
    def residual(c):
        xc, yc = c
        return np.sqrt((xs - xc)**2 + (ys - yc)**2) - R
    center0 = [x_mean, y_mean]
    center, _ = leastsq(residual, center0)
    return center[0], center[1]

def segment_by_error(x, y, E, min_len=5, fixed_radius_indices=None, fixed_radius_value=None, cut_indices=None):
    i = 0
    n = len(x)
    results = []
    cut_indices = set(cut_indices or [])
    fixed_radius_indices = fixed_radius_indices or []

    while i < n - min_len:
        forced_cut = False
        for j in range(i + min_len, n):
            if j in cut_indices:
                forced_cut = True
                break

            is_fixed = any(start <= i < end for (start, end) in fixed_radius_indices)
            if is_fixed:
                R = fixed_radius_value
                cx, cy = fit_fixed_radius_circle(x[i:j], y[i:j], R)
            else:
                try:
                    cx, cy, R = fit_circle(x[i:j], y[i:j])
                except:
                    break

            try:
                fitted_y = cy + np.sqrt(R**2 - (x[i:j] - cx)**2) * np.sign(y[i+1] - cy)
                error = np.abs(fitted_y - y[i:j])
            except RuntimeWarning:
                break

            if np.max(error) >= E:
                break

        if j - i > min_len:
            results.append({
                "start_index": i,
                "end_index": j - 1 if not forced_cut else j,
                "start_point": (x[i], y[i]),
                "radius": R,
                "center": (cx, cy)
            })
            i = j if forced_cut else j - 1
        else:
            i += 1
    return results

# --- 実行部 ---
if __name__ == "__main__":
    # パラメータ指定
    R = 530      # 円曲線の半径
    L1 = 40      # 緩和曲線1長さ
    L0 = 4     # 円曲線長さ
    L2 = 40      # 緩和曲線2長さ
    D = 0        # 初期角度[deg]
    E = 0.001     # y方向許容誤差[m]
    step = 0.005  # サンプリング間隔[m]
    min_len = 8  # 最小サンプリング点数

    # 曲線生成
    x, y = generate_composite_curve(R, L1, L0, L2, D, step)

    # インデックス算出
    len1 = int(L1 / step)
    len2 = int(L0 / step)
    len3 = int(L2 / step)

    cut_indices = [len1, len1 + len2]  # L1→円、円→L2
    fixed_radius_indices = [(len1, len1 + len2)]

    # 円弧セグメント分割
    segments = segment_by_error(
        x, y, E,
        min_len=min_len,
        fixed_radius_indices=fixed_radius_indices,
        fixed_radius_value=R,
        cut_indices=cut_indices
    )

    # 出力
    print("【近似円弧の情報】")
    for i, seg in enumerate(segments):
        px, py = seg["start_point"]
        print(f"{i+1:02d}: R = {seg['radius']:.3f} m, 開始位置 = ({px:.3f}, {py:.3f})")

    # 可視化
    plt.figure(figsize=(10, 5))
    plt.plot(x, y, label="元曲線", color='lightgray', linewidth=1)

    for seg in segments:
        si, ei = seg["start_index"], seg["end_index"]
        plt.plot(x[si:ei+1], y[si:ei+1], label=f"R={seg['radius']:.1f}m")

    plt.axis('equal')
    plt.grid(True)
    plt.title("円弧近似 (誤差 < E)")
    plt.xlabel("x [m]")
    plt.ylabel("y [m]")
    plt.legend()
    plt.show()
