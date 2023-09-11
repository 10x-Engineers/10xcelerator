class c_237_1;
    integer i = -38;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_237_1;
    c_237_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1z0xxx1xxzxz1zxzxzz1z101z00xxzxxxxxxxxzxxxxzzzxzzzzxxxxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
