class c_3418_1;
    integer i = -568;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3418_1;
    c_3418_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z110z11xx0zx0zxxz01zzz0xxzzxz1zzzxzzzzxxxzzxzzxzzxzxzxzxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
