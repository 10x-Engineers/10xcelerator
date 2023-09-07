class c_3216_1;
    integer i = -534;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3216_1;
    c_3216_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xzxx1zx0zzz0z111x1xz0zx01x1z01xxxxzzzxxzzzxzzxxxzzzxxzxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
