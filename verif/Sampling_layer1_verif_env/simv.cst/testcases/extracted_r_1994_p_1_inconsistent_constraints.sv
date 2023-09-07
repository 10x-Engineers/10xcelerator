class c_1994_1;
    integer i = -331;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1994_1;
    c_1994_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011z0z0xx00x00xxxz0z01z01xxxxzzxxzxzxxzxxxxzzzxxzxxxzzzxxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
