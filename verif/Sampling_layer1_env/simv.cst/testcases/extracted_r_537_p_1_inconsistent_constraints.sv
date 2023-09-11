class c_537_1;
    integer i = -88;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_537_1;
    c_537_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0xxz1x1110xx0zzz10001zxxz11xxzzxzxxxzxzxzzzzxzxzzzxxxxxzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
