class c_2512_1;
    integer i = -417;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2512_1;
    c_2512_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x00zz1zxxz1xxx00z1xzz0zz0z0z100xzzxxxzzzxzxxxzzxzzzxxzzxxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
