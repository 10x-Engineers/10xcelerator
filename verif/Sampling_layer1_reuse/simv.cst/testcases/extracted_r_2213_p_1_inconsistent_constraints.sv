class c_2213_1;
    integer i = -367;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2213_1;
    c_2213_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0xz00z10xzx110011x0xz0zxz0xz0zzzzzxzzzxzzxzxzzxzzxzzxzxzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
