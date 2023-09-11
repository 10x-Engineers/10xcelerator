class c_3452_1;
    integer i = -574;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3452_1;
    c_3452_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zz011z0011x01101z1x11zz0xxzzx0zzxxzzzxxxzxzxzxzzxzzzxxzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
