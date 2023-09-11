class c_636_1;
    integer i = -104;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_636_1;
    c_636_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz1111zxz0z0zz1z10000z0zx01x01zzxzzxzxzxxzxxxzzzxzxxxzxxxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
