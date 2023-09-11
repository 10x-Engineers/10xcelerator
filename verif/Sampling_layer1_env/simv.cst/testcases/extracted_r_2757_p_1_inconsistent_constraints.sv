class c_2757_1;
    integer i = -458;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2757_1;
    c_2757_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxx00zx0xz1zzx010xxz1xx0zxxxz00zzzzxxzxzxxxzzzxxzzxzzxxzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
