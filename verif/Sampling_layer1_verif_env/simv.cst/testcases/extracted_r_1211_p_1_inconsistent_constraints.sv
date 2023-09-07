class c_1211_1;
    integer i = -200;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1211_1;
    c_1211_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xzz1xz1xx001z00xz001x1zxzxx1zxxzxzxxxzxzzxxzxxxzzxzzxzzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
