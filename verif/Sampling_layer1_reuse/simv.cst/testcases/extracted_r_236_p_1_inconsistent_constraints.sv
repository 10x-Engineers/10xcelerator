class c_236_1;
    integer i = -38;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_236_1;
    c_236_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zx1xx01xx0xxx1xx00xx0zx1x0z1zxzzxzxzzxzzzxzxzxxzxxzzzzxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
