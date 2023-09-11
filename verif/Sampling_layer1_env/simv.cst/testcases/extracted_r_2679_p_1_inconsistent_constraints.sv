class c_2679_1;
    integer i = -445;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2679_1;
    c_2679_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz00xz0xx0z010x0x0001xzz101zx10xzxxzzxzzzxxxxzzxzxzzxxxxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
