class c_3063_1;
    integer i = -509;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3063_1;
    c_3063_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10xz1z1zx1zxz101xz11zz011x1xzxzxxxxzxzzzzxzzxxxzxzxxxxxzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
