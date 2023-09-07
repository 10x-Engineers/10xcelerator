class c_3323_1;
    integer i = -552;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3323_1;
    c_3323_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z1z1x1xz00zzx1x010zz01z11xzxx1xzzzzxzxxzzxzxzzxzxzxzxzxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
