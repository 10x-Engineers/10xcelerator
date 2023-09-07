class c_1601_1;
    integer i = -265;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1601_1;
    c_1601_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z001z0zx1zz00zxz0z0zzzx000zzz0zxxzxxzzxxzzxzxzzzxxxxxxzxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
