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
 26;
 -0.53500;0.00000;0.00000;,
 -0.53500;-0.15300;0.00000;,
 -0.53500;-0.15300;2.00000;,
 -0.53500;0.00000;2.00000;,
 -0.47269;0.00000;2.00000;,
 -0.47270;-0.15300;2.00000;,
 -0.47270;-0.15300;0.00000;,
 -0.47269;0.00000;0.00000;,
 0.53500;0.00000;0.00000;,
 0.53500;-0.15300;-0.00000;,
 0.53500;-0.15300;2.00000;,
 0.53500;0.00000;2.00000;,
 0.59575;0.00000;2.00000;,
 0.60436;-0.15300;2.00000;,
 0.60436;-0.15300;-0.00000;,
 0.59575;0.00000;0.00000;,
 0.00000;-0.16000;-0.00000;,
 0.00000;-0.16000;2.00000;,
 -0.95000;-0.15689;0.00000;,
 -1.50000;-0.23000;0.00000;,
 -1.50000;-0.23000;2.00000;,
 -0.95000;-0.15689;2.00000;,
 0.95000;-0.15689;2.00000;,
 1.50000;-0.23000;2.00000;,
 1.50000;-0.23000;-0.00000;,
 0.95000;-0.15689;-0.00000;;
 
 12;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;4,7,0,3;,
 4;8,9,10,11;,
 4;12,13,14,15;,
 4;12,15,8,11;,
 4;16,6,5,17;,
 4;16,17,10,9;,
 4;18,19,20,21;,
 4;18,21,2,1;,
 4;22,23,24,25;,
 4;22,25,14,13;;
 
 MeshMaterialList {
  2;
  12;
  1,
  1,
  0,
  1,
  1,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "rail_1.png";
   }
  }
  Material {
   0.144000;0.072000;0.037600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshTextureCoords {
  26;
  0.306850;1.000000;,
  0.300620;1.000000;,
  0.300620;0.000000;,
  0.306850;0.000000;,
  0.327620;0.000000;,
  0.335930;0.000000;,
  0.335930;1.000000;,
  0.327620;1.000000;,
  0.674450;1.000000;,
  0.666150;1.000000;,
  0.666150;0.000000;,
  0.674450;0.000000;,
  0.694700;0.000000;,
  0.701450;0.000000;,
  0.701450;1.000000;,
  0.694700;1.000000;,
  0.499510;1.000000;,
  0.499510;0.000000;,
  0.177600;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.177600;0.000000;,
  0.827910;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.827910;1.000000;;
 }
}
