class c_90_1;
    integer i = -13;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_90_1;
    c_90_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11zxxx00x100x0100xz00x1z1xz0010zxxzzzzzzxzxzzzzxzxxzxzzxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
