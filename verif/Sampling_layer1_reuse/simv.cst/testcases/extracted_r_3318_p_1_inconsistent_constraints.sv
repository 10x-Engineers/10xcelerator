class c_3318_1;
    integer i = -551;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3318_1;
    c_3318_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x11zz00x1xxz00x01z1xxx1z10101z1zxxzxxxxxxxzxxxzxxxxxxxzzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
