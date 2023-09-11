class c_2431_1;
    integer i = -404;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2431_1;
    c_2431_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz1110x10zzxxz0z00100xz0xz10zx1xzxxzxzxzxxzzzxxzzzxzzxzxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
