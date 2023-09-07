class c_3219_1;
    integer i = -535;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3219_1;
    c_3219_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1010x010x00z1zz111z11011010z0z1zxzxzxxzxxzxzzxxxzxzxzxxzxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
