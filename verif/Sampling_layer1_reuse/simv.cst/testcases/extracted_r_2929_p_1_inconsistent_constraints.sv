class c_2929_1;
    integer i = -487;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2929_1;
    c_2929_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00zzx1zx01x0x01x00z0zzx0z100x0zxxxzzzzxzzzzzzxzzxxzxzzxzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
