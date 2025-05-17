xof 0302txt 0032

Header {
 1;
 0;
 1;
}

template Vector {
 <3d82ab5e-62da-11cf-ab39-0020af71e433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template MeshFace {
 <3d82ab5f-62da-11cf-ab39-0020af71e433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template Mesh {
 <3d82ab44-62da-11cf-ab39-0020af71e433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template MeshNormals {
 <f6f23f43-7686-11cf-8f52-0040333594a3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template Coords2d {
 <f6f23f44-7686-11cf-8f52-0040333594a3>
 FLOAT u;
 FLOAT v;
}

template MeshTextureCoords {
 <f6f23f40-7686-11cf-8f52-0040333594a3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template ColorRGBA {
 <35ff44e0-6c7c-11cf-8f52-0040333594a3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <d3e16e81-7835-11cf-8f52-0040333594a3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template Material {
 <3d82ab4d-62da-11cf-ab39-0020af71e433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshMaterialList {
 <f6f23f42-7686-11cf-8f52-0040333594a3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material <3d82ab4d-62da-11cf-ab39-0020af71e433>]
}

template TextureFilename {
 <a42790e1-7810-11cf-8f52-0040333594a3>
 STRING filename;
}

Mesh {
 8;
 1.379998;1.900000;-5.844921;,
 1.379998;2.700000;-5.844921;,
 1.380002;2.700000;7.155079;,
 1.380002;1.900000;7.155079;,
 -1.379998;2.700000;7.155080;,
 -1.380002;2.700000;-5.844920;,
 -1.380002;1.900000;-5.844920;,
 -1.379998;1.900000;7.155080;;
 2;
 4;0,1,2,3;,
 4;4,5,6,7;;

 MeshMaterialList {
  1;
  2;
  0,
  0;

  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;

   TextureFilename {
    "Series2200-1tex.png";
   }
  }
 }

 MeshNormals {
  2;
  1.000000;0.000000;-0.000000;,
  -1.000000;0.000000;0.000000;;
  2;
  4;0,0,0,0;,
  4;1,1,1,1;;
 }

 MeshTextureCoords {
  8;
  0.300000;0.750000;,
  0.300000;0.700000;,
  0.250000;0.700000;,
  0.250000;0.750000;,
  0.250000;0.700000;,
  0.300000;0.700000;,
  0.300000;0.750000;,
  0.250000;0.750000;;
 }
}
