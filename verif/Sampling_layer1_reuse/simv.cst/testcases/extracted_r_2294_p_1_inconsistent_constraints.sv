class c_2294_1;
    integer i = -381;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2294_1;
    c_2294_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z0zxxzzz01x1z1xxz1zz0z0zx01z01zzzxzzzzxzzxxxzxxxzzxzxzxxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
