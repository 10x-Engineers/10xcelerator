class c_198_1;
    integer i = -31;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_198_1;
    c_198_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0zz1z0z0x00zxxxxzzxx1xzzxz1xzxzzzxzxxxzxxxxzxzxxxzxxzzzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
