class c_629_1;
    integer i = -103;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_629_1;
    c_629_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00100xxz10zxzzx1100111x10xxz1x1zxxzxxzxzzzxxxzzzxxxzxxxzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
