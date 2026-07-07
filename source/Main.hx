package;

import lime.app.Application;
import lime.graphics.RenderContext;
import lime.ui.KeyCode;
import lime.ui.KeyModifier;
import lime.system.System;

class Main extends Application 
{
    public function new() 
    {
        super();
    }

    public override function onWindowCreate():Void 
    {
        super.onWindowCreate();
    }

    public override function render(context:RenderContext):Void 
    {
        super.render(context);

        switch (context.type) 
        {
            case OPENGL, WEBGL, OPENGL_ES:
                var gl = context.gles2;
                gl.clearColor(0.0, 0.0, 0.0, 1.0);
                gl.clear(gl.COLOR_BUFFER_BIT);
            default:
        }
    }

    public override function update(deltaTime:Int):Void 
    {
        super.update(deltaTime);
    }

    public override function onKeyDown(keyCode:KeyCode, modifier:KeyModifier):Void 
    {
        super.onKeyDown(keyCode, modifier);
        
        if (keyCode == KeyCode.ESCAPE) 
        {
            System.exit(0);
        }
    }

    public override function onWindowResize(width:Int, height:Int):Void 
    {
        super.onWindowResize(width, height);
    }
}
