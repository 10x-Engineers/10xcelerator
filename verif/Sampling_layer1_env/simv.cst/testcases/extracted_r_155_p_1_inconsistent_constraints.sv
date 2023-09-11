class c_155_1;
    integer i = -24;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_155_1;
    c_155_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zz00000xx0zzzz00zzz00x1xxz110xxzxxxzzzzzxzzxzzzzxzxxzxzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
