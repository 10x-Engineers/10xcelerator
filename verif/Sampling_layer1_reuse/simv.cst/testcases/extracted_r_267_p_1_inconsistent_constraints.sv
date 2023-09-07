class c_267_1;
    integer i = -43;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_267_1;
    c_267_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx00100xx10xzz1x11zxxx00x1010xxzxzxzzxzzzzzxxxxzxxxxzxzxzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
