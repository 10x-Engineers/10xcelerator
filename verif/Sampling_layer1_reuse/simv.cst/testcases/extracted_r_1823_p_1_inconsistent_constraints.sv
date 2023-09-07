class c_1823_1;
    integer i = -302;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1823_1;
    c_1823_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zx00z0z0zzx10x11zx10zx0xzzzxz1zzzxxzzxxzxxxxzxzxxxxxzzxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
