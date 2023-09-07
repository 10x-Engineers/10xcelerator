class c_2509_1;
    integer i = -417;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2509_1;
    c_2509_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx1zxzxx01000x1z1x1x111100x11zzzxxxxzzxzzxxxzxxzxxzzxxxzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
