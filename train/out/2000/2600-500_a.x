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
 22;
 -0.499998;1.800000;10.000000;,
 -0.499999;3.260000;9.750000;,
 -1.399999;3.260000;9.750000;,
 -1.399998;1.800000;10.000000;,
 -1.399999;3.260000;9.750000;,
 -1.399999;3.260000;9.500000;,
 -1.399999;1.800000;9.700000;,
 1.400001;3.260000;9.750000;,
 0.500001;3.260000;9.750000;,
 0.500001;1.800000;10.000000;,
 1.400002;1.800000;10.000000;,
 1.400001;1.800000;9.700000;,
 1.400001;3.260000;9.500000;,
 1.400001;3.260000;9.750000;,
 1.379999;2.700000;-5.850000;,
 1.380001;2.700000;5.950000;,
 1.380001;1.900000;5.950000;,
 1.379999;1.900000;-5.850000;,
 -1.379999;1.900000;5.950000;,
 -1.379999;2.700000;5.950000;,
 -1.380001;2.700000;-5.850000;,
 -1.380001;1.900000;-5.850000;;
 6;
 4;0,1,2,3;,
 4;4,5,6,3;,
 4;7,8,9,10;,
 4;11,12,13,10;,
 4;14,15,16,17;,
 4;18,19,20,21;;

 MeshMaterialList {
  1;
  6;
  0,
  0,
  0,
  0,
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
  4;
  0.000000;0.168776;0.985654;,
  -1.000000;-0.000000;0.000000;,
  1.000000;0.000000;-0.000000;,
  -1.000000;0.000000;0.000000;;
  6;
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;2,2,2,2;,
  4;2,2,2,2;,
  4;3,3,3,3;;
 }

 MeshTextureCoords {
  22;
  0.300000;0.750000;,
  0.300000;0.700000;,
  0.250000;0.700000;,
  0.250000;0.750000;,
  0.300000;0.750000;,
  0.300000;0.700000;,
  0.250000;0.700000;,
  0.250000;0.700000;,
  0.300000;0.700000;,
  0.300000;0.750000;,
  0.250000;0.750000;,
  0.250000;0.700000;,
  0.300000;0.700000;,
  0.300000;0.750000;,
  0.250000;0.700000;,
  0.300000;0.700000;,
  0.300000;0.750000;,
  0.250000;0.750000;,
  0.300000;0.750000;,
  0.300000;0.700000;,
  0.250000;0.700000;,
  0.250000;0.750000;;
 }
}
