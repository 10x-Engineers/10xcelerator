class c_2387_1;
    integer i = -396;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2387_1;
    c_2387_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx1xzxxxzz001x10x0x1xx0zzz1zz01xxzzzzxxzzxzxzxxzzxxxzxzxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
