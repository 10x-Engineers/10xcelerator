class c_949_1;
    integer i = -157;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_949_1;
    c_949_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xx00zxz000z1zxxx0z0zzx010xz0zxxzxxzzzzzzzzzxxzzxxxzzzzxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
