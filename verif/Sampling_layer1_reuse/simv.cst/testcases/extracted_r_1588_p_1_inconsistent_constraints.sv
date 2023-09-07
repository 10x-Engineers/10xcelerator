class c_1588_1;
    integer i = -263;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1588_1;
    c_1588_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1zxxz0z1xzx100zzx01xzx0zzx10z1xzzxzzzxzxzxxzxzxzxxzzxxxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
