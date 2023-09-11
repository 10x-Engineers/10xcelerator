class c_2126_1;
    integer i = -353;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2126_1;
    c_2126_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0z01x11111x0xz1z11010101x0xz0xxzxzxzxxxzxxxxxzzzzzzzzzxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
