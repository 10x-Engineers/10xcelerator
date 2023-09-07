class c_2209_1;
    integer i = -367;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2209_1;
    c_2209_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z00z001z011x0z0xzxzx110xxxzxx0xxxxxxxxzxzxxzxxzzxxxzxxxzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
