class c_773_1;
    integer i = 773;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_773_1;
    c_773_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zxxx00zz1zzxxxz01xxz1z1x100z01xxzxzxxxzzzxzzzzxxzzxxxxxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
