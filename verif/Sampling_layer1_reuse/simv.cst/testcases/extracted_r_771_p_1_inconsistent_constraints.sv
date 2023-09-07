class c_771_1;
    integer i = -127;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_771_1;
    c_771_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z00x10zz10z0z101001zzz1zz01x01xxzzxxzxxzzzxxxxxzxzxzxzxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
