using System;
using UnityEngine;
using NativeWebSocket;

public class video : MonoBehaviour
{
    WebSocket websocket;

    async void Start()
    {
        websocket = new WebSocket("ws://localhost:8765");

        websocket.OnOpen += () =>
        {
            Debug.Log("Connection open!");
        };

        websocket.OnError += (e) =>
        {
            Debug.Log("Error! " + e);
        };

        websocket.OnClose += (e) =>
        {
            Debug.Log("Connection closed!");
        };

        websocket.OnMessage += (bytes) =>
        {
            // ��base64�ַ�������Ϊ�ֽ�����
            byte[] jpegData = Convert.FromBase64String(System.Text.Encoding.UTF8.GetString(bytes));
            Debug.Log("Connection open1");
            Texture2D tex = new Texture2D(2, 2);
            tex.LoadImage(jpegData);  // ��JPEG���ݼ��ص�����
            tex.Apply();
            Debug.Log("Connection open2");
            GetComponent<Renderer>().material.mainTexture = tex;  // ������Ӧ�õ�����
        };

        // waiting for messages
        await websocket.Connect();
    }

    async void OnApplicationQuit()
    {
        await websocket.Close();
    }
}
