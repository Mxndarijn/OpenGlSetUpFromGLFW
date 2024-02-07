#include <glad/glad.h>
#include <glfw3.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <iostream>
#include <fstream>

GLFWwindow* window;
glm::ivec2 screenSize;
GLuint programId;
GLuint modelViewUniform;
GLuint timeUniform;
GLuint vertexShader;
GLuint fragmentShader;
float cube1Rotation;
float cube2Rotation;
double lastTime;

class Vertex
{
public:
    glm::vec3 position;
    glm::vec4 color;
    Vertex(const glm::vec3 &position, const glm::vec4 &color) : position(position), color(color) {}
};


void checkShaderErrors(GLuint shaderId)
{
    GLint status;
    glGetShaderiv(shaderId, GL_COMPILE_STATUS, &status);					//kijk of het compileren is gelukt
    if (status == GL_FALSE)
    {
        int length, charsWritten;
        glGetShaderiv(shaderId, GL_INFO_LOG_LENGTH, &length);				//haal de lengte van de foutmelding op
        char* infolog = new char[length + 1];
        memset(infolog, 0, length + 1);
        glGetShaderInfoLog(shaderId, length, &charsWritten, infolog);		//en haal de foutmelding zelf op
        std::cout << "Error compiling shader:\n" << infolog << std::endl;
        delete[] infolog;
    }
}



void onDebug(GLenum source, GLenum type, GLuint id, GLenum severity, GLsizei length, const GLchar* message, GLvoid* userParam)
{
std::cout << message << std::endl;
}
static void glfw_error_callback(int error, const char* description)
{
    std::cerr << "Glfw Error" << error << " -> " << description << std::endl;
}


void init()
{
    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
    {
        std::cout << "Failed to initialize GLAD" << std::endl;
        return;
    }
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_BLEND);
    glClearColor(0.3f, 0.3f, 0.3f, 1.0f);

    std::ifstream vertexShaderFile("shaders/simple.vs");
    std::string vertexShaderData((std::istreambuf_iterator<char>(vertexShaderFile)), std::istreambuf_iterator<char>());
    const char* cvertexShaderData = vertexShaderData.c_str();

    std::ifstream fragShaderFile("shaders/simple.fs");
    std::string fragShaderData((std::istreambuf_iterator<char>(fragShaderFile)), std::istreambuf_iterator<char>());
    const char* cfragShaderData = fragShaderData.c_str();

    programId = glCreateProgram();							// maak een shaderprogramma aan

    GLuint vertexId = glCreateShader(GL_VERTEX_SHADER);		// maak vertex shader aan
    glShaderSource(vertexId, 1, &cvertexShaderData, NULL);		// laat opengl de shader uit de variabele 'vertexShader' halen
    glCompileShader(vertexId);								// compileer de shader
    checkShaderErrors(vertexId);							// controleer of er fouten zijn opgetreden bij het compileren
    glAttachShader(programId, vertexId);					// hang de shader aan het shaderprogramma


    GLuint fragmentId = glCreateShader(GL_FRAGMENT_SHADER);	// maak fragment shader aan
    glShaderSource(fragmentId, 1, &cfragShaderData, NULL);	// laat opengl de shader uit de variabele 'fragmentShader' halen
    glCompileShader(fragmentId);							// compileer de shader
    checkShaderErrors(fragmentId);							// controleer of er fouten zijn opgetreden bij het compileren
    glAttachShader(programId, fragmentId);					// hang de shader aan het shaderprogramma

    glLinkProgram(programId);								// link het programma, zorg dat alle attributes en varying gelinked zijn
    glUseProgram(programId);								// Zet dit als actieve programma

    modelViewUniform = glGetUniformLocation(programId, "modelViewProjectionMatrix");	//haal de uniform van modelViewMatrix op
    timeUniform = glGetUniformLocation(programId, "time");	//haal de uniform van modelViewMatrix op

    glEnableVertexAttribArray(0);							// we gebruiken vertex attribute 0
    glEnableVertexAttribArray(1);							// en vertex attribute 1

    if (glDebugMessageCallback)
    {
        glDebugMessageCallback(reinterpret_cast<GLDEBUGPROC>(&onDebug), NULL);
        glEnable(GL_DEBUG_OUTPUT);
    }

    cube1Rotation = 0;
    cube2Rotation = 0;
    lastTime = glfwGetTime();
}
void createCube(const glm::vec3& translation, const glm::vec4(&colors)[6]) {
    Vertex vertices[] = {
            // front face
            Vertex(glm::vec3(-1, -1, -1) + translation, colors[0]),
            Vertex(glm::vec3(1, -1, -1) + translation, colors[0]),
            Vertex(glm::vec3(1, 1, -1) + translation, colors[0]),
            Vertex(glm::vec3(-1, 1, -1) + translation, colors[0]),

            // back face
            Vertex(glm::vec3(-1, -1, 1) + translation, colors[1]),
            Vertex(glm::vec3(1, -1, 1) + translation, colors[1]),
            Vertex(glm::vec3(1, 1, 1) + translation, colors[1]),
            Vertex(glm::vec3(-1, 1, 1) + translation, colors[1]),

            // left face
            Vertex(glm::vec3(-1, -1, -1) + translation, colors[2]),
            Vertex(glm::vec3(-1, 1, -1) + translation, colors[2]),
            Vertex(glm::vec3(-1, 1, 1) + translation, colors[2]),
            Vertex(glm::vec3(-1, -1, 1) + translation, colors[2]),

            // right face
            Vertex(glm::vec3(1, -1, -1) + translation, colors[3]),
            Vertex(glm::vec3(1, 1, -1) + translation, colors[3]),
            Vertex(glm::vec3(1, 1, 1) + translation, colors[3]),
            Vertex(glm::vec3(1, -1, 1) + translation, colors[3]),

            // bottom face
            Vertex(glm::vec3(-1, -1, -1) + translation, colors[4]),
            Vertex(glm::vec3(1, -1, -1) + translation, colors[4]),
            Vertex(glm::vec3(1, -1, 1) + translation, colors[4]),
            Vertex(glm::vec3(-1, -1, 1) + translation, colors[4]),

            // top face
            Vertex(glm::vec3(-1, 1, -1) + translation, colors[5]),
            Vertex(glm::vec3(1, 1, -1) + translation, colors[5]),
            Vertex(glm::vec3(1, 1, 1) + translation, colors[5]),
            Vertex(glm::vec3(-1, 1, 1) + translation, colors[5])
    };

    glVertexAttribPointer(0, 3, GL_FLOAT, false, sizeof(Vertex), vertices);
    glVertexAttribPointer(1, 4, GL_FLOAT, false, sizeof(Vertex), &vertices[0].color);
    glDrawArrays(GL_QUADS, 0, 24);
}

void display()
{
    glfwGetWindowSize(window, &screenSize.x, &screenSize.y);
    glViewport(0, 0, screenSize.x, screenSize.y);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);


    glm::mat4 mvp = glm::perspective(glm::radians(80.0f), screenSize.x / (float)screenSize.y, 0.01f, 100.0f);		//begin met een perspective matrix
    mvp *= glm::lookAt(glm::vec3(0.0f, 0.0f, 2.0f), glm::vec3(0.0f, 0.0f, 0.0f), glm::vec3(0.0f, 1.0f, 0.0f));		//vermenigvuldig met een lookat
    mvp = glm::translate(mvp, glm::vec3(0, 0, -3));																	//verplaats de camera gewoon naar achter
    auto rot1 = glm::rotate(mvp, cube1Rotation, glm::vec3(0, 1, 0));															//roteer het object een beetje
    glUniformMatrix4fv(modelViewUniform, 1, GL_FALSE, glm::value_ptr(rot1));											//en zet de matrix in opengl
    glUniform1f(timeUniform, (float)lastTime);

    // First Cube
    glm::vec3 cube1Position = glm::vec3(2, 0, 0);
    glm::vec4 colors1[] = {glm::vec4(1,0,0,1), glm::vec4(0,1,0,1), glm::vec4(0,0,1,1), glm::vec4(1,1,0,1), glm::vec4(1,0,1,1), glm::vec4(0,1,1,1)};
    createCube(cube1Position, colors1);

    // Second Cube
    auto rot2 = glm::rotate(mvp, cube2Rotation, glm::vec3(0, 1, 0));															//roteer het object een beetje
    glUniformMatrix4fv(modelViewUniform, 1, GL_FALSE, glm::value_ptr(rot2));

    glm::vec3 cube2Position = glm::vec3(-2, 0, 0);
    glm::vec4 colors2[] = {glm::vec4(0.5,0.5,0.5,1), glm::vec4(0.6,0.6,0.6,1), glm::vec4(0.7,0.7,0.7,1), glm::vec4(0.8,0.8,0.8,1), glm::vec4(0.9,0.9,0.9,1), glm::vec4(1.0,1.0,1.0,1)};
    createCube(cube2Position, colors2);

    glfwSwapBuffers(window);
}


void update()
{
    double time = glfwGetTime();
    double elapsed = time - lastTime;

    cube1Rotation += (float)elapsed;
    cube2Rotation -= (float)elapsed * 1.5;


    if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
        glfwSetWindowShouldClose(window, true);



    lastTime = time;
}




int main(int argc, char* argv[])
{
    glfwSetErrorCallback(glfw_error_callback);
    if (!glfwInit())
        return false;
    const char* glsl_version = "#version 130";
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 0);

    window = glfwCreateWindow(1280, 1024, "Shaders week 1", NULL, NULL);

    if (window == nullptr)
        return false;
    glfwMakeContextCurrent(window);
    glfwSwapInterval(1); // Enable vsync

    init();

    while (true)
    {
        if (glfwWindowShouldClose(window))
            break;
        glfwPollEvents();

        update();
        display();
    }

    glfwDestroyWindow(window);
    glfwTerminate();


}