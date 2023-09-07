class c_2378_1;
    integer i = -395;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2378_1;
    c_2378_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0zzxzz110111zzx00011xzz0zxxx1xxxzxzxxzxxxzxxxzxxxxxzzzzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
