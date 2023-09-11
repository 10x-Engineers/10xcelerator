class c_890_1;
    integer i = -147;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_890_1;
    c_890_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz1zz0x0xz10zxx1x0zxx1zz0x0z10xxxzxzxxxxzzzzzxzxxzzzzxxxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
