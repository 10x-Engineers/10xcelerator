class c_2195_1;
    integer i = -364;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2195_1;
    c_2195_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111x0z010xzz1zz1z1001z1x0x10z0x1zzzzzxxxxzxxxxzzzxxxzxzzzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
