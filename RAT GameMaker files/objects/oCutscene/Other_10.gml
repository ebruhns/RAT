
currentScene = sceneInfo[scene];
var len = array_length(currentScene)-1;

currentSceneArray = -1;
currentSceneArray = array_create(len, 0);
array_copy(currentSceneArray, 0, currentScene, 1, len);



