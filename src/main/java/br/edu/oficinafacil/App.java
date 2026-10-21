package br.edu.oficinafacil;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.layout.StackPane;
import javafx.stage.Stage;

/** Ponto de entrada do OficinaFácil. Na semana 1 abre apenas uma janela vazia. */
public class App extends Application {

    @Override
    public void start(Stage stage) {
        stage.setTitle("OficinaFácil");
        stage.setScene(new Scene(new StackPane(), 960, 600));
        stage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}
