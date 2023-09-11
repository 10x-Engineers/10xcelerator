class c_21_1;
    integer i = -2;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_21_1;
    c_21_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x101xx010zzz111xz1100zz0x0011x1zxxxxzzxzxxxxxzzzzzxxzzzzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
