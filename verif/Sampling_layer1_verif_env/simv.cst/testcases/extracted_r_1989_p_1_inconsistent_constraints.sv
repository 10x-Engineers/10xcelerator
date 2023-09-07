class c_1989_1;
    integer i = -330;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1989_1;
    c_1989_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0zzzx1001z111x11x01zzz1x0zzx0zzzzxzzxxxzzxxzxxxzxxxxxxzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
