class c_2699_1;
    integer i = -448;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2699_1;
    c_2699_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxxz1zx0xzx11zx0zxzzzzz00100xx1zzxxzxzzxzzzxzzxzzzxxxzxxxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
