class c_2122_1;
    integer i = -352;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2122_1;
    c_2122_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1000zxzxzzxzzzz1xx1xxzzz10x011zzxxzxzxzzxzxxzzzxxxzxzxzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
