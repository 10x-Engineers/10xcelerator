class c_2418_1;
    integer i = -401;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2418_1;
    c_2418_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xxz00z01xzx0z01zx001z10z0zzxx1xxzxzzzxzxzzxxxxzzxxzzzzzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
