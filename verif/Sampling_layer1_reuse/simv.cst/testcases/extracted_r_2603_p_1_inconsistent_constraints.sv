class c_2603_1;
    integer i = -432;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2603_1;
    c_2603_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xzx1z01x0xxz0xxx10zxx00z11zzz0xzxzxzxzxxxzzxxzxxzxxxxxzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
