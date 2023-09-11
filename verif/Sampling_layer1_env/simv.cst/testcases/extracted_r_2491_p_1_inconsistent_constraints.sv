class c_2491_1;
    integer i = -414;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2491_1;
    c_2491_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzxz000111x0xzx10x111zx0xx111xzxzzzxzzzzxxxzxxxzzzzxxzxzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
