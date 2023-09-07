class c_2945_1;
    integer i = -489;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2945_1;
    c_2945_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01010z0zzxx0zz1110z0xzzxzxxx1z1xxzzzzxzzxxxxzxxxxzxzxxzxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
