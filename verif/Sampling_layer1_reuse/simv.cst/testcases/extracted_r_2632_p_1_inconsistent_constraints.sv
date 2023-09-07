class c_2632_1;
    integer i = -437;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2632_1;
    c_2632_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx1zz001zx11x00zzz01z01011x0zz1zxzxxxzxzxxzxxxzxxxzxzzzzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
