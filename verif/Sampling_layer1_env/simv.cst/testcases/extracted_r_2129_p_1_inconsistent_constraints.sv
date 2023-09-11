class c_2129_1;
    integer i = -353;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2129_1;
    c_2129_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0111zz11xzx110xx100xxzx1z001z1zxxxzxxxxzxxxxxxzxxzxxxzzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
