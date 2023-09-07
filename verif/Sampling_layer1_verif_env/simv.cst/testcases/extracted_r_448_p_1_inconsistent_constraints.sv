class c_448_1;
    integer i = -73;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_448_1;
    c_448_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z0xz01zzx01100000000xz111x001zxzxzzzzxzzxxxzxxzzzxzxxxzxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
