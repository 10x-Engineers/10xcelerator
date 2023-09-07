class c_2215_1;
    integer i = -368;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2215_1;
    c_2215_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0z1x0x100zz1z10z1zxxx1zxzx1zxxzxzxzxzxxzxxxzzzzzxxzxxzzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
