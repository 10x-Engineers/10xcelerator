class c_1120_1;
    integer i = -185;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1120_1;
    c_1120_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z1zzxx1z10xxx1xz1x0xz1zxxzx0zzxxxzxzxxxzzzxzxxxzzzxxzxxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
