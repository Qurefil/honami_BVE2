xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 14;
 -0.90938;-0.20000;2.50000;,
 -0.90938;-0.20000;-2.50000;,
 -2.00000;-0.40000;-2.50000;,
 -2.00000;-0.40000;2.50000;,
 0.90577;-0.20000;2.50000;,
 2.00000;-0.40000;2.50000;,
 2.00000;-0.40000;-2.50000;,
 0.90577;-0.20000;-2.50000;,
 0.52281;-0.22057;2.50000;,
 0.52281;-0.22057;-2.50000;,
 -0.02498;-0.25000;-2.50000;,
 -0.02498;-0.25000;2.50000;,
 -0.53511;-0.22116;2.50000;,
 -0.53511;-0.22116;-2.50000;;
 
 6;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,4,7,9;,
 4;8,9,10,11;,
 4;12,11,10,13;,
 4;12,13,1,0;;
 
 MeshMaterialList {
  2;
  6;
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.830000;0.830000;0.830000;1.000000;;
   30.000000;
   0.170000;0.170000;0.170000;;
   0.510000;0.510000;0.510000;;
   TextureFilename {
    "dosho.png";
   }
  }
  Material {
   0.661600;0.483200;0.204000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshTextureCoords {
  14;
  0.272655;1.000000;,
  0.272655;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  0.726443;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.726443;0.000000;,
  0.630702;1.000000;,
  0.630702;0.000000;,
  0.493754;0.000000;,
  0.493754;1.000000;,
  0.366223;1.000000;,
  0.366223;0.000000;;
 }
}
